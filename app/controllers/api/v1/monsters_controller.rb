module api
    module v1
        class MonstersController < ApplicationController

            def index
                monsters = Monster.all
                render json: MonsterSerializer.new(monsters, options).serialized_json
            end

            def show
                monster = Monster.find_by(slug: params[:slug])
                ender json: MonsterSerializer.new(monster, options).serialized_json

            end
            def create
                monster = monster.new(monster_params)

                if monster.save
                    render json: MonsterSerializer.new(monster).serialized_json
                else
                    render json: { error: monster.errors.messages }, status: 422
                end
            end

            def update
                monster = monster.find_by(slug: params[:slug])

                if monster.update(monster_params)
                    render json: MonsterSerializer.new(monster, options).serialized_json
                else
                    render json: { error: monster.errors.messages }, status: 422
                end
            end

            def destroy
                monster = monster.find_by(slug: params[:slug])

                if monster.destroy
                    head :no_content
                else
                    render json: { error: monster.errors.messages }, status: 422
                end
            end

            private

            def monster_params
                params.require(:monster).permit(:name, :image_url)
            end

            def options
                @options ||= { include: %i[reviews] }
            end
        end
    end
end