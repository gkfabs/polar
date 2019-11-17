# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: act_dailygoal.proto

require 'google/protobuf'

require 'types_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("act_dailygoal.proto", :syntax => :proto2) do
    add_message "polar_data.PbActivityMetMinGoal" do
      required :goal, :float, 1
      optional :activity_cutoff_threshold, :float, 2
    end
    add_message "polar_data.PbPolarBalanceGoal" do
      required :start_date, :message, 1, "PbDate"
      optional :target_weight, :float, 2
      optional :goal_duration_in_weeks, :uint32, 3
      optional :fraction_of_activity, :float, 4
    end
    add_message "polar_data.PbDailyActivityGoal" do
      optional :goal_type, :enum, 3, "polar_data.PbDailyActivityGoal.PbActivityGoalType"
      optional :activity_metmin_goal, :message, 1, "polar_data.PbActivityMetMinGoal"
      required :last_modified, :message, 2, "PbSystemDateTime"
      optional :polar_balance_goal, :message, 4, "polar_data.PbPolarBalanceGoal"
    end
    add_enum "polar_data.PbDailyActivityGoal.PbActivityGoalType" do
      value :ACTIVITY_GOAL_DAILY_ACTIVITY, 1
      value :ACTIVITY_GOAL_WEIGHT_LOSS, 2
      value :ACTIVITY_GOAL_WEIGHT_MAINTAIN, 3
    end
  end
end

module PolarData
  PbActivityMetMinGoal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbActivityMetMinGoal").msgclass
  PbPolarBalanceGoal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPolarBalanceGoal").msgclass
  PbDailyActivityGoal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbDailyActivityGoal").msgclass
  PbDailyActivityGoal::PbActivityGoalType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbDailyActivityGoal.PbActivityGoalType").enummodule
end