
---

# Other Edge finding Filter examples

## All edges 
filter = [-1 -1 -1; -1 8 -1; -1 -1 -1]
<table>
  <tr>
    <td><img src="./images/img.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/HVD.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

Now we compare other edges with these

## 1st order derivative

### Horizontal lines
filter = [-1;1]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/H1.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Vertical lines
filter = [-1 1]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/v1.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

## 2nd order derivative

### Horizontal lines
filter = [1;-2;1]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/H2.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Vertical lines
filter = [1 -2 1]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/v2.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

## Comparison between 1st & 2nd order
### Horizontal lines
<table>
  <tr>
    <td><img src="./images/H1.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/H2.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Vertical lines
<table>
  <tr>
    <td><img src="./images/v1.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/v2.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>


## Laplacian filters 
Also called 2D or 90 degree Isotropic mask
### Horizontal and vertical lines
filter = [0 1 0; 1 -4 1; 0 1 0]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/HV.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Diagonal lines
filter = [-1 0 -1; 0 4 0; -1 0 -1]
<table>
  <tr>
    <td><img src="./images/HVD.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/D.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

## Comparison of center weight +ve & -ve
If center weight of mask is +ve then it give edges values in +ve, that you need to add on primary img to get sharpen one, shown below left img. But if center weight is -ve then it give -ve value that you need to subtract from primary img.
<table>
  <tr>
    <td><img src="./images/Center_w8_positive.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/Center_w8_negative.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>


### Sobel vs. Laplacian Filter (for Edge Detection)

#### Sobel Filter:

- **First-order Derivative:** Measures intensity change (gradient).
- **Directional Information:** Identifies horizontal, vertical, and diagonal edges.
- **Efficient:** Utilizes simple 3x3 kernels for fast processing.
- **Less Sensitive to Noise:** Offers better noise handling compared to Laplacian.

#### Laplacian Filter:

- **Second-order Derivative:** Measures the rate of intensity change.
- **No Directional Information:** Only highlights areas of rapid intensity change (potential edges).
- **More Sensitive to Noise:** Can amplify noise if not pre-processed adequately.
- **Simpler Kernel:** Utilizes a single kernel for basic implementation.

These filters serve distinct purposes in edge detection, with Sobel excelling in directional edge detection and noise reduction, while Laplacian focuses on highlighting rapid intensity changes but requires careful noise handling. Understanding their differences aids in selecting the appropriate filter for specific image processing tasks.

---
