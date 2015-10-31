class Score

  def initialize
    @scores={0=>'0',1=>'15',2=>'30',3=>'40',4=>'AD',5=>'GAME'}
    @player1=0
    @player2=0
  end

  def get_player1
    @scores[@player1]
  end

  def get_player2
    @scores[@player2]
  end

  def scores_1
    @player1+=1
    special_score_1
  end

  def scores_2
      @player2+=1
      special_score_2
  end

  def special_score_1
    if @player1==4 && @player2<3
      @player1+=1
    end
    if @player2==4
      @player1-=1
      @player2-=1
    end
  end

  def special_score_2
    if @player2==4 && @player1<3
      @player2+=1
    end
    if @player1==4
      @player1-=1
      @player2-=1
    end
  end
end
