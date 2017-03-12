class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.find(group_params)
        @group.save
        redirect_to groups_path, notice: 'Create Successfully'
    end

    def edit
        @group = Group.find(params[:id])
    end

    def update
        @group = Group.find(params[:id])
        @group = Group.update(group_params)
        redirect_to groups_path, notice: 'Update Successfully'
    end

    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        redirect_to groups_path, notice: 'Deleted'
    end
end
