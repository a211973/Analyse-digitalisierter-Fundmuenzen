% Specify the folder path containing multiple images
folder_path = 'D:\下载\Bahrfeldt-19-a';

% Create a folder for processed images if it doesn't exist
output_folder = 'processed_images';
if ~exist(output_folder, 'dir')
    mkdir(output_folder);
end

% Get a list of all TIFF files in the folder
file_list = dir(fullfile(folder_path, '*.tif'));

% Loop through each image in the folder
for i = 1:numel(file_list)
    % Read each image in the folder
    img = imread(fullfile(folder_path, file_list(i).name));
    
    % Perform contrast enhancement on the image using imadjust
    enhanced_img = imadjust(img, [0.3 0.7], [0 1]);
    
    % Convert enhanced image to grayscale
    enhanced_gray = rgb2gray(enhanced_img);

    % Apply median filtering to the enhanced grayscale image
    filtered_img = medfilt2(enhanced_gray, [3, 3]);
    
    % Generate a new file name for the processed image based on the original file name
    [~, file_name, ~] = fileparts(file_list(i).name);
    output_filename = fullfile(output_folder, [file_name, '_processed.tif']);

    % Save the processed image with the new file name in the output folder
    imwrite(filtered_img, output_filename);

    % Display the original, enhanced, and filtered images in a single figure
    figure;
    subplot(3, 1, 1);
    imshow(img);
    title(['Original Image - ', file_name]);

    subplot(3, 1, 2);
    imshow(enhanced_img);
    title(['Enhanced Image - ', file_name]);

    subplot(3, 1, 3);
    imshow(filtered_img);
    title(['Filtered Image - ', file_name]);
    colormap(gray); % Set colormap to grayscale for the third subplot
end
