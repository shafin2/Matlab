
---

# Find Large stars in Image

## Actual image

![Actual Image](images/galaxy.png)

## Step 1: GrayScale Image

![Gray Image](images/gray_img.png)

## Step 2: Blur Image
To blur or remove small stars

![Blur Image](images/blur_img.png)

## Step 3: Binary Image
Do binarization or segmentation

![Binary Image](images/binary_img.png)

## Step 4: Final Image
Apply binary img as mask on grayscale img

![Final Image](images/final_img.png)

## Output 20x20 filter
Just change filter size in code

![output Image](images/20x20.png)

## Output 40x40 filter
Just change filter size in code

![output Image](images/40x40.png)

## Side by Side Comparisons

### 10x10

<table>
  <tr>
    <td><img src="./images/gray_img.png" alt="Original Image" width="300"/></td>
    <td><img src="./images/final_img.png" alt="Generated Image" width="300"/></td>
  </tr>
</table>

### 20x20

<table>
  <tr>
    <td><img src="./images/gray_img.png" alt="Original Image" width="300"/></td>
    <td><img src="./images/20x20.png" alt="Generated Image" width="300"/></td>
  </tr>
</table>

<table>
  <tr>
    <td><img src="./images/gray_img.png" alt="Original Image" width="300"/></td>
    <td><img src="./images/40x40.png" alt="Generated Image" width="300"/></td>
  </tr>
</table>
---
