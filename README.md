<p align="center" style="text-align: center">
  <img src="assets/logo.png" width="33%">
</p>

<p align="center">
    <p align="center">Android Debug Bridge (ADB) client implementation in pure Rust !</p>
    <p align="center">
        <a href="https://crates.io/crates/adb_client">
            <img alt="crates.io" src="https://img.shields.io/crates/v/adb_client.svg"/>
        </a>
        <a href="https://github.com/cocool97/adb_client/actions">
            <img alt="ci status" src="https://github.com/cocool97/adb_client/actions/workflows/rust-build.yml/badge.svg"/>
        </a>
        <a href="https://deps.rs/repo/github/cocool97/adb_client">
            <img alt="dependency status" src="https://deps.rs/repo/github/cocool97/adb_client/status.svg"/>
        </a>
        <a href="https://opensource.org/licenses/MIT">
            <img alt="dependency status" src="https://img.shields.io/badge/License-MIT-yellow.svg"/>
        </a>
    </p>
</p>

Main features of this library:

- Full Rust, don't use `adb *` shell commands to interact with devices
- Supports
  - Using ADB server as a proxy (standard behavior when using `adb` CLI)
  - Connecting directly to end devices (without using adb-server)
    - Over **USB**
    - Over **TCP/IP**
- Implements hidden `adb` features, like `framebuffer`
- Highly configurable
- Provides wrappers to use directly from Python code
- Easy to use !

## adb_client

Rust library implementing both ADB protocols (server and end-devices) and providing a high-level abstraction over the many supported commands.

Improved documentation available [here](./adb_client/README.md).

## adb_cli

Rust binary providing an improved version of Google's official `adb` CLI, by using `adb_client` library.
Provides a "real-world" usage example of this library.

Improved documentation available [here](./adb_cli/README.md).

## pyadb_client

Python wrapper using `adb_client` library to export classes usable directly from a Python environment.

Improved documentation available [here](./pyadb_client/README.md)

## Related publications

- [Diving into ADB protocol internals (1/2)](https://www.synacktiv.com/publications/diving-into-adb-protocol-internals-12)
- [Diving into ADB protocol internals (2/2)](https://www.synacktiv.com/publications/diving-into-adb-protocol-internals-22)

Some features may still be missing, all pull requests are welcome !


# adb_client

[![MIT licensed](https://img.shields.io/crates/l/adb_client.svg)](./LICENSE-MIT)
[![Documentation](https://docs.rs/adb_client/badge.svg)](https://docs.rs/adb_client)
[![Crates.io Total Downloads](https://img.shields.io/crates/d/adb_client)](https://crates.io/crates/adb_client)

Rust library implementing ADB protocol.

## Installation

Add `adb_client` crate as a dependency by simply adding it to your `Cargo.toml`:

```toml
[dependencies]
adb_client = "*"
```

## Benchmarks

Benchmarks run on `v2.0.6`, on a **Samsung S10 SM-G973F** device and an **Intel i7-1265U** CPU laptop

### `ADBServerDevice` push vs `adb push`

`ADBServerDevice` performs all operations by using adb server as a bridge.

|File size|Sample size|`ADBServerDevice`|`adb`|Difference|
|:-------:|:---------:|:----------:|:---:|:-----:|
|10 MB|100|350,79 ms|356,30 ms|<div style="color:green">-1,57 %</div>|
|500 MB|50|15,60 s|15,64 s|<div style="color:green">-0,25 %</div>|
|1 GB|20|31,09 s|31,12 s|<div style="color:green">-0,10 %</div>|

## Examples

### Get available ADB devices

```rust no_run
use adb_client::ADBServer;
use std::net::{SocketAddrV4, Ipv4Addr};

// A custom server address can be provided
let server_ip = Ipv4Addr::new(127, 0, 0, 1);
let server_port = 5037;

let mut server = ADBServer::new(SocketAddrV4::new(server_ip, server_port));
server.devices();
```

### Using ADB server as bridge

#### Launch a command on device

```rust no_run
use adb_client::{ADBServer, ADBDeviceExt};

let mut server = ADBServer::default();
let mut device = server.get_device().expect("cannot get device");
device.shell_command(&["df", "-h"], &mut std::io::stdout());
```

#### Push a file to the device

```rust no_run
use adb_client::ADBServer;
use std::net::Ipv4Addr;
use std::fs::File;
use std::path::Path;

let mut server = ADBServer::default();
let mut device = server.get_device().expect("cannot get device");
let mut input = File::open(Path::new("/tmp/f")).expect("Cannot open file");
device.push(&mut input, "/data/local/tmp");
```

### Interact directly with end devices

#### (USB) Launch a command on device

```rust no_run
use adb_client::{ADBUSBDevice, ADBDeviceExt};

let vendor_id = 0x04e8;
let product_id = 0x6860;
let mut device = ADBUSBDevice::new(vendor_id, product_id).expect("cannot find device");
device.shell_command(&["df", "-h"], &mut std::io::stdout());
```

#### (USB) Push a file to the device

```rust no_run
use adb_client::{ADBUSBDevice, ADBDeviceExt};
use std::fs::File;
use std::path::Path;

let vendor_id = 0x04e8;
let product_id = 0x6860;
let mut device = ADBUSBDevice::new(vendor_id, product_id).expect("cannot find device");
let mut input = File::open(Path::new("/tmp/f")).expect("Cannot open file");
device.push(&mut input, &"/data/local/tmp");
```

#### (TCP) Get a shell from device

```rust no_run
use std::net::{SocketAddr, IpAddr, Ipv4Addr};
use adb_client::{ADBTcpDevice, ADBDeviceExt};

let device_ip = IpAddr::V4(Ipv4Addr::new(192, 168, 0, 10));
let device_port = 43210;
let mut device = ADBTcpDevice::new(SocketAddr::new(device_ip, device_port)).expect("cannot find device");
device.shell(&mut std::io::stdin(), Box::new(std::io::stdout()));
```
