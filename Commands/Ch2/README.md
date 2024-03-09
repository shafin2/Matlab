# Chapter 2: Fundamentals

## Overview

This folder contains code snippets and examples for basic image processing operations in MATLAB/Octave. Each section demonstrates fundamental techniques essential for understanding and working with images.

## Contents

1. [Reading and Displaying an Image](#reading-and-displaying-an-image)
2. [Converting Data Types](#converting-data-types)
3. [Indexing and Slicing](#indexing-and-slicing)
4. [Matrices and Operations](#matrices-and-operations)
5. [Built-in Functions](#built-in-functions)
6. [Conditional Statements and Loops](#conditional-statements-and-loops)
7. [User Input](#user-input)

---

## Reading and Displaying an Image

```matlab
% Read an image file (replace 'img.jpeg' with your actual image path)
A = imread('img.jpeg');

% Get image dimensions (rows and columns)
[r, c] = size(A);

% Check if the image is logical (binary) - unlikely for natural images
l = islogical(A); 
% Most images will not be logical (0s and 1s) but will have intensity values.

% Display the image in a figure window
imshow(A);
```

## Converting Data Types

```matlab
% Create a sample matrix
A = [1 2; 3 4];

% Convert to grayscale intensity values (between 0 and 1)
g = mat2gray(A);
% This is useful for image processing algorithms that expect normalized values.

% Convert to binary image with threshold 0.6
gb = im2bw(g, 0.6);
% This creates a binary image where values above 0.6 become white (1) and below become black (0).

% Convert binary image back to double precision (optional)
gbd = im2double(gb);
```

## Indexing and Slicing

```matlab
v = [1 3 5 6 7];

% Access second element
v(2) 

% Get elements from 3rd to the end
v(3:end)

% Get every other element starting from the beginning (1st, 3rd, 5th)
v(1:2:end)
```

## Matrices and Operations

```matlab
% Create a sample matrix
M = [1 2 3; 4 5 6; 7 8 9];

% Access element at row 2, column 3
M(2, 3)

% Get elements from row 2 to the end, columns in reverse order (5, 6, 8)
M(2:end, end:-2:1)

% Calculate the sum of all elements in the matrix
sum(M)

% Create a 3x3 matrix of zeros
zeros(3, 3)

% Create a 3x3 matrix of ones
ones(3, 3)
```

## Built-in Functions

```matlab
% Generate a magic square (special matrix with specific properties)
magic(3)

% Generate a random matrix with values between 0 and 1
rand(2, 4)

% Generate a random matrix with values from a normal distribution
randn(3, 3)
```

## Conditional Statements and Loops

```matlab
% Check the number of dimensions in a matrix
M = [1 2 3; 4 5 6; 7 8 9];
disp(ndims(M))  % This will display 2 (2D matrix)

% Conditional statement (won't print in this case because M is 2D)
if ndims(M) > 1
  disp('Hello, world!')
end

% Loop to print numbers from 0 to 10 (0 included)
for i = 0:10
    disp(i)
end

% Break statement (example, can be used to exit a loop prematurely)
break

% Continue statement (example, can be used to skip to the next iteration in a loop)
continue
```

## User Input

```matlab
% Prompt user to enter 'A'
disp("Enter 'A' ")
inp = input('');

% Compare user input with 'A' (case-sensitive)
if strcmp(inp,'A')
    disp("You entered A correctly")
end

% Convert string to number (if possible)
str2num(inp)  % This may result in an error if the input is not a valid number
```

---
