json.array! @runnings, partial: "runnings/running", as: :running

   json.array!(@runnings) do |running|
     json.extract! running, :id, :title, :condition_id, :distance_id
     json.start running.start_date
     json.end running.end_date
     json.url running_url(running, format: :html)
   end
