
---

# Statistical Operations

### Min filter

<table>
  <tr>
    <td><img src="./images/saltnpepper.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/min_filter.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Max filter

<table>
  <tr>
    <td><img src="./images/saltnpepper.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/max_filter.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

### Median filter

<table>
  <tr>
    <td><img src="./images/saltnpepper.png" alt="Original Image" width="400"/></td>
    <td><img src="./images/median_filter.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

# Sharpening Filter

### Edge detection [-1 -1 -1; -1 8 -1;-1 -1 -1]

<table>
  <tr>
    <td><img src="./images/a.jpeg" alt="Original Image" width="400"/></td>
    <td><img src="./images/edge_detection.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>


# Sharpening through Averaging Filter

## Step 1: GrayScale Image

![Gray Image](images/a.jpeg)

## Step 2: Blur Image

![Blur Image](images/sharp_thorugh_avg/blur.png)

## Step 3: Find Edges
these can be get by : img - blur_img

![edges](images/sharp_thorugh_avg/edges.png)

## Step 4: Sharp image
this can be get by : img + edges

![Final Image](images/sharp_thorugh_avg//sharp.png)


## Side by Side Comparisons

<table>
  <tr>
    <td><img src="./images/a.jpeg" alt="Original Image" width="400"/></td>
    <td><img src="./images/sharp_thorugh_avg/sharp.png" alt="Generated Image" width="400"/></td>
  </tr>
</table>

---
