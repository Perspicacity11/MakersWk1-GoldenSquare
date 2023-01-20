require 'diary_entry_class'


RSpec.describe DiarySection do
  before(:each) do
    @diary_contents1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum est ac ligula efficitur, ac rhoncus enim varius. Maecenas feugiat ipsum quis euismod malesuada. Cras tincidunt volutpat ligula eget pharetra. Integer eu ante quis neque porta fringilla vel eu lacus. Mauris risus lacus, sagittis quis mi sit amet, ullamcorper consequat nibh. Nulla laoreet ligula a arcu mattis, et placerat nulla congue. Praesent ac diam suscipit, vehicula neque eu, porta ipsum. Duis ultricies dignissim auctor. Vestibulum sed turpis suscipit, accumsan sem quis, sollicitudin quam. In ornare eros id hendrerit ultrices. Nulla et arcu at sem lacinia rhoncus non vitae augue. Sed sollicitudin faucibus sodales. Aenean magna purus, aliquet ac sapien tempor, pulvinar interdum ex. Nunc ac finibus sapien. Nulla ac tempus dui, vitae venenatis eros. Pellentesque a cursus est, non varius ante. Integer fringilla, orci ac laoreet auctor, tellus tellus interdum velit, vitae tincidunt risus nisl ut erat. Pellentesque sapien sem, viverra eu mattis bibendum, viverra quis leo. Donec convallis eget purus nec finibus. Phasellus pellentesque, ex et suscipit aliquet, sapien odio feugiat nisl, sit amet pulvinar purus ligula eu lorem. Cras tristique, tortor in dignissim suscipit, tellus velit condimentum eros, sit amet pharetra risus dolor at nisi. Nulla arcu erat, pretium in pharetra id, rhoncus vel diam. Proin suscipit bibendum lorem, quis posuere nibh pellentesque sit amet. Cras tincidunt eleifend nisl id tempus. In facilisis condimentum tristique. Aenean eu justo id augue placerat dapibus. Donec ut volutpat augue, non convallis metus. Sed lorem est, venenatis et mauris quis, dictum eleifend justo. Aliquam erat volutpat. Nam laoreet iaculis iaculis. Donec imperdiet sapien eget nibh molestie pretium. Ut laoreet lobortis est et pretium. Praesent vulputate, diam in ultrices porta, tortor orci tempor risus, scelerisque efficitur sem tellus nec leo. Vestibulum in metus gravida, semper lorem non, semper ante. Nulla facilisi. Nullam dignissim neque in mollis ornare. Duis dictum eu ex at varius. Praesent nisi quam, dapibus vel nibh ac, faucibus finibus nisl. Curabitur quis tellus scelerisque, maximus leo ac, pretium eros. Duis aliquet varius felis. In vel turpis neque. Cras in maximus odio. Donec maximus, lacus et interdum tincidunt, augue nibh congue tellus, ut mollis lectus lorem nec eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales ligula a vehicula accumsan. Proin pulvinar convallis sapien, ut finibus nibh porta id. Nam vitae imperdiet lectus, et fermentum urna. Quisque quis purus lacinia, accumsan massa in, auctor ipsum. Curabitur a eleifend risus. Sed ipsum ligula, vehicula nec arcu sed, tincidunt consequat sem. Aenean aliquam finibus suscipit. Pellentesque ac consectetur elit. Aenean at justo id nisi commodo malesuada. Donec euismod felis a felis sollicitudin, id sollicitudin nibh aliquam. Cras eu dui quam. Nullam dolor metus, tincidunt eu semper et, dapibus quis eros. Donec ut ullamcorper mauris, sed tristique nisl. Nulla sed justo ut ipsum tincidunt euismod. Vivamus velit metus, porta hendrerit nunc quis, vehicula dapibus purus. Nam quam quam, commodo a ornare at, laoreet eu lorem. Maecenas maximus tellus eros, nec elementum dolor venenatis sit amet. Aenean quam arcu, auctor nec pellentesque rutrum."
    @diaryentry1 = DiarySection.new("Entry 1", @diary_contents1)
    end

    it "initialises the object and saves title and contents to instance variables, returns the variables as strings" do
        expect(@diaryentry1.title()).to eq "Entry 1"
        expect(@diaryentry1.contents()).to eq @diary_contents1
    end

    it "returns 500 for contents of first diary entry initialised" do
        expect(@diaryentry1.count_words).to eq 500
    end

    it "returns a reading time of 20 minutes when given a WPM argument of 100wpm" do
        expect(@diaryentry1.reading_time(100)).to eq 5
    end

    it "returns the first hundred word chunk of diary contents" do
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(0, 100).join(" ")   
     end

    it "returns five one-hundred word chunks in sequence and restarts when the passage is fully read" do
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(0, 100).join(" ")
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(100, 100).join(" ")
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(200, 100).join(" ")
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(300, 100).join(" ")
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(400, 100).join(" ")
        expect(@diaryentry1.reading_chunk(100, 1)).to eq @diary_contents1.split(" ").slice(0, 100).join(" ")
    end
end