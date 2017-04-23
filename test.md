# Adresseringsinfo 

## Lokaal 4.037

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
<td style="text-align:left">PC1</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.10.11</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:left">PC20</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.10.30</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:left">Laptop1</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:left">Laptop20</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:left">Image-pc</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">192.168.30.10</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.30.1</td>
<td style="text-align:center">30</td>
</tr>
<tr>
<td style="text-align:left">Beamer</td>
<td style="text-align:center">NIC</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">DHCP</td>
<td style="text-align:center">192.168.60.1</td>
<td style="text-align:center">60</td>
</tr>
<tr>
<td style="text-align:left" rowspan="3">S1</td>
<td style="text-align:center">Vlan 10</td>
<td style="text-align:center">192.168.10.5</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:center">Vlan 30</td>
<td style="text-align:center">192.168.30.5</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.30.1</td>
<td style="text-align:center">30</td>
</tr>
<tr>
<td style="text-align:center">Vlan 60</td>
<td style="text-align:center">192.168.60.5</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.60.1</td>
<td style="text-align:center">60</td>
</tr>
<tr>
<td style="text-align:left" rowspan="2">S2</td>
<td style="text-align:center">Vlan 20</td>
<td style="text-align:center">192.168.20.5</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.20.1</td>
<td style="text-align:center">20</td>
</tr>
<tr>
<td style="text-align:center">Vlan 50</td>
<td style="text-align:center">192.168.50.5</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">192.168.50.1</td>
<td style="text-align:center">50</td>
</tr>
<tr>
<td style="text-align:left" rowspan="5">R37</td>
<td style="text-align:center">G0/0.10</td>
<td style="text-align:center">192.168.10.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">10</td>
</tr>
<tr>
<td style="text-align:center">G0/0.30</td>
<td style="text-align:center">192.168.30.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">30</td>
</tr>
<tr>
<td style="text-align:center">G0/0.60</td>
<td style="text-align:center">192.168.60.1</td>
<td style="text-align:center">255.255.255.0</td>
<td style="text-align:center">N/A</td>
<td style="text-align:center">60</td>
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
|10  |Vast        |S1 F0/1-20 |
|20  |Student     |S2 F0/1-20 |
|30  |Management  |S1 F0/21   |
|40  |FileServer  |N/A        |
|50  |Wireless    |S2 F0/21   |
|60  |Docent      |S1 F0/22-23|
