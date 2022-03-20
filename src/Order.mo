/// Order

module {

  /// Order を表す型
  public type Order = {
    #less;
    #equal;
    #greater;
  };

  /// Order が #less かどうかのチェック
  public func isLess(order : Order) : Bool {
    switch order {
      case (#less) { true };
      case _ { false };
    };
  };

  /// Order が #equal かどうかのチェック
  public func isEqual(order : Order) : Bool {
    switch order {
      case (#equal) { true };
      case _ { false };
    };
  };

  /// Order が #greater かどうかのチェック
  public func isGreater(order : Order) : Bool {
    switch order {
      case (#greater) { true };
      case _ { false };
    };
  };

  /// `o1` と `o2` が同じ順序である場合にのみ真（true）を返す
  public func equal(o1 : Order, o2: Order) : Bool {
    switch (o1, o2) {
      case (#less, #less) { true };
      case (#equal, #equal) { true };
      case (#greater, #greater) { true };
      case _ { false };
    };
  };

};

/*
/// Order

module {

  /// A type to represent an order.
  public type Order = {
    #less;
    #equal;
    #greater;
  };

  /// Check if an order is #less.
  public func isLess(order : Order) : Bool {
    switch order {
      case (#less) { true };
      case _ { false };
    };
  };

  /// Check if an order is #equal.
  public func isEqual(order : Order) : Bool {
    switch order {
      case (#equal) { true };
      case _ { false };
    };
  };

  /// Check if an order is #greater.
  public func isGreater(order : Order) : Bool {
    switch order {
      case (#greater) { true };
      case _ { false };
    };
  };

  /// Returns true if only if  `o1` and `o2` are the same ordering.
  public func equal(o1 : Order, o2: Order) : Bool {
    switch (o1, o2) {
      case (#less, #less) { true };
      case (#equal, #equal) { true };
      case (#greater, #greater) { true };
      case _ { false };
    };
  };

};
*/