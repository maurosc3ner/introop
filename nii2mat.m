%  Este ejemplo carga una imagen .nii ubicada en el directorio data (favor
%  crear directorio y poner la imagen alli. Luego la convierte a .mat y la
%  guarda en el directorio output/ (creado por el mismo).
%  
%  - Esteban Correa (correaem@mail.uc.edu)
%
clear all; close all; clc;
addpath('func/');

V = load_nii('data/image00CompleteMASK.nii');

volume=V.img;
whos volume
mkdir output
save 'output/convertedVolume.mat' volume

for i=1:272
    imshow(volume(:,:,i));
    
end