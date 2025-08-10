enum StrategyType {
  Offensive,
  Defensive,
  Balanced,
  CounterAttack,
  Pressing,
  ParkTheBus,
}

class Strategy {
  final StrategyType type;
  final String description;
  Strategy(this.type, this.description);

  static final Map<StrategyType, Map<StrategyType, double>> strategyMatrix = {
    StrategyType.Offensive: {
      StrategyType.Offensive: 7,
      StrategyType.Defensive: 5,
      StrategyType.Balanced: 6,
      StrategyType.CounterAttack: 4,
    },
    StrategyType.Defensive: {
      StrategyType.Offensive: 10,
      StrategyType.Defensive: 7,
      StrategyType.Balanced: 8,
      StrategyType.CounterAttack: 5,
    },
    StrategyType.Balanced: {
      StrategyType.Offensive: 7,
      StrategyType.Defensive: 7,
      StrategyType.Balanced: 7,
      StrategyType.CounterAttack: 6,
    },
    StrategyType.CounterAttack: {
      StrategyType.Offensive: 8,
      StrategyType.Defensive: 6,
      StrategyType.Balanced: 6,
      StrategyType.CounterAttack: 7,
    },
  };
  static double getBonus(
    StrategyType myStrategy,
    StrategyType opponentStrategy,
  ) => strategyMatrix[myStrategy]?[opponentStrategy] ?? 0.0;
}
