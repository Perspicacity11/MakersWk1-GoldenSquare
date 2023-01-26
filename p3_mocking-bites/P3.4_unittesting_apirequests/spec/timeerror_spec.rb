require 'timeerror'

RSpec.describe TimeError do

    it "reads back the difference between server and computer time" do
        fakerequester = double :requester
        allow(fakerequester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"82.163.117.26","datetime":"2023-01-26T15:32:51.289010+00:00","day_of_week":4,"day_of_year":26,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674747171,"utc_datetime":"2023-01-26T15:32:51.289010+00:00","utc_offset":"+00:00","week_number":4}')
        time = Time.new(2023, 1, 26, 15, 32, 51)
        timeerror = TimeError.new(fakerequester)
        expect(timeerror.error(time)).to eq 0.28901
    end

end


    #calling .error on the TimeError object should return a time, the diff between server and computer time
    #neither are deterministic so both need to be fixed for the purpose of testing

    #: {"abbreviation":"GMT","client_ip":"82.163.117.26","datetime":"2023-01-26T15:32:51.289010+00:00","day_of_week":4,"day_of_year":26,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674747171,"utc_datetime":"2023-01-26T15:32:51.289010+00:00","utc_offset":"+00:00","week_number":4}%                                                                                                                                    