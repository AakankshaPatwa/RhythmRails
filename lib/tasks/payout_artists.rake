desc "payout artists for there streams"
task payout_artists: :environment do 
    puts "Paying out artist now!"
    Artist.where(stripe_status: "payouts_enabled").find_each do |artist|
        streams_to_payout = artist.streams.where(payed_out: false)
        if streams_to_payout.any?
            amount_to_payout = streams_to_payout.count *50
            puts "Amount to payouts: #{amount_to_payout}"
            Stripe::Transfer.create({
                amount: amount_to_payout,
                currency: "usd",
                destination: artist.stripe_account_id,
            })
            streams_to_payout.update_all(payed_out: true)
        end
    end
end