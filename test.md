# Adresseringsinfo 

## Lokaal 4.038

### Adresseringstabel

<table class="table table-striped table-bordered">
<thead>
<tr>
<th style="text-align:left">Device</th>
<th style="text-align:center">Interface</th>
<th style="text-align:center">IP Address</th>
<th style="text-align:center">Subnet Mask</th>
<th style="text-align:center">Default Gateway</th>
<th style="text-align:center">Vlan</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left">PC21</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.10.31</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:left">PC40</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.10.50</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:left">Laptop21</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:left">Laptop40</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:left">Fileserver</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.50.10</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.50.1</td>
<td style="text-align:center">30</td>
</tr>
<tr>
<td style="text-align:left" rowspan="3">S38-1</td>
<td style="text-align:center">Vlan 10</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:center">Vlan 40</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.40.1</td>
<td style="text-align:center">30</td>
</tr>
<tr>
<td style="text-align:left" rowspan="2">S38-2</td>
<td style="text-align:center">Vlan 20</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:center">Vlan 50</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.50.1</td>
<td style="text-align:center">50</td>
</tr>
<tr>
<td style="text-align:left" rowspan="5">R38</td>
<td style="text-align:center">G0/0.10</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:center">G0/0.40</td>
<td style="text-align:center">192.168.40.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">40</td>
</tr>
<tr>
<td style="text-align:center">G0/1.20</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:center">G0/1.50</td>
<td style="text-align:center">192.168.50.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">50</td>
</tr>
</tbody>
</table>

### VLAN tabel

|Vlan|Name        |Interfaces |
|:--:|:----------:|:---------:|
|10  |Vast        |S38-1 F0/1-20 |
|20  |Student     |S38-2 F0/1-20 |
|30  |Management  |N/A           |
|40  |FileServer  |S38-1 F0/21   |
|50  |Wireless    |S38-2 F0/21   |
|60  |Docent      |S38-1 F0/22-23|
