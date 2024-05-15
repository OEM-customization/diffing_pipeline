.class final enum Ljava/lang/invoke/VarHandle$AccessType;
.super Ljava/lang/Enum;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/invoke/VarHandle$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o SET:Ljava/lang/invoke/VarHandle$AccessType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 1575
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1576
    new-instance v1, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1577
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v5, "COMPARE_AND_SWAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1578
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v7, "COMPARE_AND_EXCHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1579
    new-instance v7, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v9, "GET_AND_UPDATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1582
    new-instance v9, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v11, "GET_AND_UPDATE_BITWISE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1583
    new-instance v11, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v13, "GET_AND_UPDATE_NUMERIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1574
    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/invoke/VarHandle$AccessType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ljava/lang/invoke/VarHandle$AccessType;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1574
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static varargs blacklist allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 5
    .param p0, "values"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1625
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 1626
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Class;

    return-object v1
.end method

.method private static varargs blacklist fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1631
    .local p0, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1632
    .local v0, "i":I
    if-eqz p1, :cond_8

    .line 1633
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object p1, p0, v0

    move v0, v1

    .line 1634
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_8
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1635
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-object v3, p2, v1

    aput-object v3, p0, v0

    .line 1634
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_9

    .line 1636
    .end local v1    # "j":I
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_16
    return v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1574
    const-class v0, Ljava/lang/invoke/VarHandle$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessType;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/lang/invoke/VarHandle$AccessType;
    .registers 1

    .line 1574
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessType;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

    invoke-virtual {v0}, [Ljava/lang/invoke/VarHandle$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/VarHandle$AccessType;

    return-object v0
.end method


# virtual methods
.method varargs blacklist accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 1589
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/invoke/VarHandle$1;->$SwitchMap$java$lang$invoke$VarHandle$AccessType:[I

    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$AccessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6a

    .line 1619
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unknown AccessType"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :pswitch_15
    invoke-static {v2, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1615
    .local v0, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1616
    .local v1, "i":I
    aput-object p2, v0, v1

    .line 1617
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1606
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :pswitch_24
    invoke-static {v1, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1607
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1608
    .restart local v1    # "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object p2, v0, v1

    .line 1609
    aput-object p2, v0, v2

    .line 1610
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    .line 1600
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    :pswitch_37
    invoke-static {v1, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1601
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1602
    .restart local v1    # "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aput-object p2, v0, v1

    .line 1603
    aput-object p2, v0, v2

    .line 1604
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    .line 1595
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    :pswitch_4c
    invoke-static {v2, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1596
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1597
    .restart local v1    # "i":I
    aput-object p2, v0, v1

    .line 1598
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1591
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :pswitch_5d
    const/4 v0, 0x0

    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1592
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    .line 1593
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4c
        :pswitch_37
        :pswitch_24
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
