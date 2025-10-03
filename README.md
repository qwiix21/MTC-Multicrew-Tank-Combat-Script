# Vehicle ESP for [MTC] Multicrew Tank Combat

![Experimental](https://img.shields.io/badge/Status-Experimental-orange)
![Roblox](https://img.shields.io/badge/Platform-Roblox-blue)

## ⚠️ Disclaimer

**This is an experimental version** of a Vehicle ESP script for the Roblox game "[MTC] Multicrew Tank Combat". This script is provided for educational purposes only. Use at your own risk.

**Current limitations:**
- Only basic vehicle highlighting functionality
- Distance display above vehicles
- This is an early development version
- Many planned features are not yet implemented

## 📋 Description

This script provides Vehicle ESP (Extra Sensory Perception) functionality for [MTC] Multicrew Tank Combat. It displays visual indicators and information about vehicles in the game world.

### Current Features:
- **Vehicle Highlighting**: Different colored highlights based on vehicle type
  - Green: Mi-series vehicles
  - Orange: 2S or BM-21 vehicles  
  - Red: T-series vehicles
  - Blue: Other vehicles
- **Distance Tracking**: Real-time distance calculation from your position
- **Vehicle Information**: Display of vehicle name and distance above each vehicle

### Vehicle Color Coding:
- `Mi-*` vehicles → Green
- `2S*` or `BM-21` vehicles → Orange  
- `T-*` vehicles → Red
- All other vehicles → Blue

## 🚀 Installation & Usage

1. Execute the script in your preferred Roblox executor
2. The ESP will automatically start tracking vehicles
3. To disable: Set `getgenv().Toggle = false`

## 🔧 Technical Details

The script creates:
- **Highlight objects** for visual vehicle outlines
- **BillboardGui elements** for text displays
- **Real-time distance calculations** between player and vehicles
- **Automatic cleanup** when toggled off

## 📝 Notes

- This is currently in **experimental phase**
- Only basic ESP functionality is implemented
- No major bugs reported with current features
- Performance optimized with debounce protection

## 🛠️ Planned Features

Future versions may include:
- Additional vehicle information
- Improved visual indicators
- Customization options
- Performance optimizations

---

*This project is for educational purposes and is not affiliated with the game developers.*
