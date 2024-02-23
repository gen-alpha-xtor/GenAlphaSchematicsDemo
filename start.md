
# GenAlpha Schematics Demo

[GenAlpha Schematics](https://marketplace.visualstudio.com/items?itemName=gen-alpha-xtor.schematics-vscode) enables editing real, production-quality schematics, live in [VsCode](https://code.visualstudio.com).

GenAlpha operates on the same [OpenAccess](https://si2.org/openaccess)  databases and schematics supported by leading silicon foundry PDKs.


## This Demo 

GenAlpha is designed to run on-premises, on your corporate or institutional servers. [Instructions below](#getting-genalpha). This demo repository can be cloned and run locally, or can be run in GitHub's cloud-native [codespaces](https://github.com/features/codespaces). 


## Demo Schematics

The schematics in this demo repository come courtesy of the open-source [ASAP7 predictive PDK](https://asap.asu.edu/), maintained and distributed by [The OpenROAD Project](https://github.com/The-OpenROAD-Project). The ASAP7 libraries include schematics and symbols for: 

| Library       | Cell                  | View          |
| ------------- | --------------------- | ------------- |
| asap7ssc7p5t  |  |  |
| | DFFHQNx1_ASAP7_75t_R  | [schematic](./asap7_pdk_r1p7/asap7ssc7p5t_05/DFFHQNx1_ASAP7_75t_R/schematic/sch.oa) |
| |                       | [symbol](./asap7_pdk_r1p7/asap7ssc7p5t_05/DFFHQNx1_ASAP7_75t_R/symbol/symbol.oa) |
| | INVx1_ASAP7_75t_R     | [schematic](./asap7_pdk_r1p7/asap7ssc7p5t_05/INVx1_ASAP7_75t_R/schematic/sch.oa) |
| |                       | [symbol](./asap7_pdk_r1p7/asap7ssc7p5t_05/INVx1_ASAP7_75t_R/symbol/symbol.oa) |
| asap7_TechLib  |  |  |
| | nmos_lvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/nmos_lvt/symbol/symbol.oa) |
| | nmos_rvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/nmos_rvt/symbol/symbol.oa) |
| | nmos_slvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/nmos_slvt/symbol/symbol.oa) |
| | nmos_sram |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/nmos_sram/symbol/symbol.oa) |
| | pmos_lvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/pmos_lvt/symbol/symbol.oa) |
| | pmos_rvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/pmos_rvt/symbol/symbol.oa) |
| | pmos_slvt |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/pmos_slvt/symbol/symbol.oa) |
| | pmos_sram |  [symbol](./asap7_pdk_r1p7/cdslib/asap7_TechLib/pmos_sram/symbol/symbol.oa) |

Clicking on any of those links will open an interactive editor pane.  
Alternately:

- Navigate to their `sch.oa` or `symbo.oa` files in the VsCode file explorer panel, generally at left, or
- Open them via the `code` command-line utility, e.g. `code asap7_pdk_r1p7/asap7ssc7p5t_05/DFFHQNx1_ASAP7_75t_R/schematic/sch.oa`


## Editing

- Clicking on any instance, pin, or wire will select and highlight it. 
- Move instances and pins by dragging them with the mouse.
- `r` rotates the selected element, in increments of 90 degrees, counter-clockwise
- `h` flips the selected element horizontally
- `v` flips the selected element vertically 
- `Delete` and `Backspace` remove the selected element
- `f` zooms to fit all content into view
- Middle-clicking and dragging moves the editor view relative to the schematic
- `q` toggles the embedded *detail editor*. This is the place to edit the details of compound elements such as instances and pins. A self-describing JSON view of the selected element enables changing names, parameter values, and most other element data. 
- `p` begins adding a pin. Pins default to a copy of the last-added pin. They can be moved, flipped, and rotated with a combination of the mouse and shortcut keys. Their names, directions, and other data can be modified in the detail editor. 


## In Schematics

- `i` begins adding an instance. Instances default to a renamed copy of the last instance added. They can be moved, flipped, and rotated with a combination of the mouse and shortcut keys. Their names, directions, parameter values, and other data can be modified in the detail editor. 
- `w` begins drawing a wire. Once in wire-drawing mode: 
  - Clicking adds a vertex to the wire
  - Double-clicking completes the wire path


## Getting GenAlpha

GenAlpha Schematics runs as an extension to the popular open-source [VsCode IDE](https://code.visualstudio.com). It is designed to run on your data, on your own company or institutional servers, running any supported platform (RedHat/ CentOS Linux 7 or 8). It runs like other IDE extensions, such as those for language highlighting or debugging - as *you*. Your user account, your directories, with only access to what you yourself can see. GenAlpha does not require any priviledged access (e.g. `root`, `sudo`) to install or set up. 

GenAlpha is most easily installed from the [VsCode extension marketplace](https://marketplace.visualstudio.com/items?itemName=gen-alpha-xtor.schematics-vscode). It pairs particularly well with VsCode's built-in [remote development via SSH](https://code.visualstudio.com/docs/remote/ssh) extension, which enables editing remote (server) data on your preferred local OS and UI, without ever transfering any files between the two. 

