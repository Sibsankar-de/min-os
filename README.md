# MinOS is a Minimal OS.

`It is Under development.`

## Dependencies to run OS in Qemu VM

```bash
sudo apt-get install qemu-system
```

## Run the OS in VM:

Run these commands to start the OS

```bash
make
./run.sh
```

For Debug Using bochs Run this command

- download bochs (if not):
```bash
sudo apt install bochs bochs-sdl bochsbios vgabios
```
- Run debug:
```bash
make
./debug.sh
```
