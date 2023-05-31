# CIDR to IP List Converter

This Bash script converts CIDR (Classless Inter-Domain Routing) notation to a list of IP addresses. It takes input CIDR addresses from a file and writes the corresponding IP addresses to an output file.

## Prerequisites

- Bash (Bourne Again SHell)

## Usage

1. Create a file named `input.txt`.
2. Enter each CIDR address on a new line in `input.txt`. For example:
   ```
   192.168.0.0/24
   10.0.0.0/16
   ```
3. Download the script `cidr_to_ip.sh`.
4. Make the script executable by running the following command in the terminal:
   ```bash
   chmod +x cidr_to_ip.sh
   ```
5. Execute the script by running:
   ```bash
   ./cidr_to_ip.sh
   ```
6. After execution, the resulting IP addresses will be stored in the file `output.txt`.

## Output

The script reads the CIDR addresses from `input.txt` and generates a list of corresponding IP addresses. The IP addresses are written to `output.txt`, with each IP address on a new line.

## Example

**Input (input.txt):**
```
192.168.0.0/24
10.0.0.0/16
```

**Output (output.txt):**
```
192.168.0.0
192.168.0.1
192.168.0.2
...
192.168.0.254
192.168.0.255
10.0.0.0
10.0.1.0
10.0.2.0
...
10.0.255.0
```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

## License

This script is released under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per the terms of the license.

## Acknowledgments

This script is inspired by the need to convert CIDR addresses to IP lists for various networking tasks.
