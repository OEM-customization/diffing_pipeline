.class public final enum Ljava/lang/invoke/VarHandle$AccessMode;
.super Ljava/lang/Enum;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/invoke/VarHandle$AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum greylist-max-o WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field static final greylist-max-o methodNameToAccessMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/VarHandle$AccessMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o at:Ljava/lang/invoke/VarHandle$AccessType;

.field final greylist-max-o methodName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 35

    .line 1650
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, "get"

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1656
    new-instance v1, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v4, "SET"

    const/4 v5, 0x1

    const-string v6, "set"

    invoke-direct {v1, v4, v5, v6, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v1, Ljava/lang/invoke/VarHandle$AccessMode;->SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1662
    new-instance v2, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v4, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v6, "GET_VOLATILE"

    const/4 v7, 0x2

    const-string v8, "getVolatile"

    invoke-direct {v2, v6, v7, v8, v4}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1668
    new-instance v4, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v6, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v8, "SET_VOLATILE"

    const/4 v9, 0x3

    const-string v10, "setVolatile"

    invoke-direct {v4, v8, v9, v10, v6}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v4, Ljava/lang/invoke/VarHandle$AccessMode;->SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1674
    new-instance v6, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v8, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v10, "GET_ACQUIRE"

    const/4 v11, 0x4

    const-string v12, "getAcquire"

    invoke-direct {v6, v10, v11, v12, v8}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v6, Ljava/lang/invoke/VarHandle$AccessMode;->GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1680
    new-instance v8, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v10, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v12, "SET_RELEASE"

    const/4 v13, 0x5

    const-string v14, "setRelease"

    invoke-direct {v8, v12, v13, v14, v10}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v8, Ljava/lang/invoke/VarHandle$AccessMode;->SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1686
    new-instance v10, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v12, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_OPAQUE"

    const/4 v15, 0x6

    const-string v13, "getOpaque"

    invoke-direct {v10, v14, v15, v13, v12}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v10, Ljava/lang/invoke/VarHandle$AccessMode;->GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1692
    new-instance v12, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "SET_OPAQUE"

    const/4 v15, 0x7

    const-string v11, "setOpaque"

    invoke-direct {v12, v14, v15, v11, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v12, Ljava/lang/invoke/VarHandle$AccessMode;->SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1698
    new-instance v11, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "COMPARE_AND_SET"

    const/16 v15, 0x8

    const-string v9, "compareAndSet"

    invoke-direct {v11, v14, v15, v9, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v11, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1704
    new-instance v9, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "COMPARE_AND_EXCHANGE"

    const/16 v15, 0x9

    const-string v7, "compareAndExchange"

    invoke-direct {v9, v14, v15, v7, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v9, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1710
    new-instance v7, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "COMPARE_AND_EXCHANGE_ACQUIRE"

    const/16 v15, 0xa

    const-string v5, "compareAndExchangeAcquire"

    invoke-direct {v7, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v7, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1716
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "COMPARE_AND_EXCHANGE_RELEASE"

    const/16 v15, 0xb

    const-string v3, "compareAndExchangeRelease"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1722
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "WEAK_COMPARE_AND_SET_PLAIN"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "weakCompareAndSetPlain"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1728
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "WEAK_COMPARE_AND_SET"

    const/16 v15, 0xd

    move-object/from16 v17, v3

    const-string v3, "weakCompareAndSet"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1734
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "WEAK_COMPARE_AND_SET_ACQUIRE"

    const/16 v15, 0xe

    move-object/from16 v18, v5

    const-string v5, "weakCompareAndSetAcquire"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1740
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "WEAK_COMPARE_AND_SET_RELEASE"

    const/16 v15, 0xf

    move-object/from16 v19, v3

    const-string v3, "weakCompareAndSetRelease"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1746
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_SET"

    const/16 v15, 0x10

    move-object/from16 v20, v5

    const-string v5, "getAndSet"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1752
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_SET_ACQUIRE"

    const/16 v15, 0x11

    move-object/from16 v21, v3

    const-string v3, "getAndSetAcquire"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1758
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_SET_RELEASE"

    const/16 v15, 0x12

    move-object/from16 v22, v5

    const-string v5, "getAndSetRelease"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1764
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_ADD"

    const/16 v15, 0x13

    move-object/from16 v23, v3

    const-string v3, "getAndAdd"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1770
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_ADD_ACQUIRE"

    const/16 v15, 0x14

    move-object/from16 v24, v5

    const-string v5, "getAndAddAcquire"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1776
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_ADD_RELEASE"

    const/16 v15, 0x15

    move-object/from16 v25, v3

    const-string v3, "getAndAddRelease"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1782
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_OR"

    const/16 v15, 0x16

    move-object/from16 v26, v5

    const-string v5, "getAndBitwiseOr"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1788
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_OR_RELEASE"

    const/16 v15, 0x17

    move-object/from16 v27, v3

    const-string v3, "getAndBitwiseOrRelease"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1794
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_OR_ACQUIRE"

    const/16 v15, 0x18

    move-object/from16 v28, v5

    const-string v5, "getAndBitwiseOrAcquire"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1800
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_AND"

    const/16 v15, 0x19

    move-object/from16 v29, v3

    const-string v3, "getAndBitwiseAnd"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1806
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_AND_RELEASE"

    const/16 v15, 0x1a

    move-object/from16 v30, v5

    const-string v5, "getAndBitwiseAndRelease"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1812
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_AND_ACQUIRE"

    const/16 v15, 0x1b

    move-object/from16 v31, v3

    const-string v3, "getAndBitwiseAndAcquire"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1818
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_XOR"

    const/16 v15, 0x1c

    move-object/from16 v32, v5

    const-string v5, "getAndBitwiseXor"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1824
    new-instance v5, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_XOR_RELEASE"

    const/16 v15, 0x1d

    move-object/from16 v33, v3

    const-string v3, "getAndBitwiseXorRelease"

    invoke-direct {v5, v14, v15, v3, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1830
    new-instance v3, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v14, "GET_AND_BITWISE_XOR_ACQUIRE"

    const/16 v15, 0x1e

    move-object/from16 v34, v5

    const-string v5, "getAndBitwiseXorAcquire"

    invoke-direct {v3, v14, v15, v5, v13}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1644
    const/16 v5, 0x1f

    new-array v5, v5, [Ljava/lang/invoke/VarHandle$AccessMode;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v22, v5, v0

    const/16 v0, 0x12

    aput-object v23, v5, v0

    const/16 v0, 0x13

    aput-object v24, v5, v0

    const/16 v0, 0x14

    aput-object v25, v5, v0

    const/16 v0, 0x15

    aput-object v26, v5, v0

    const/16 v0, 0x16

    aput-object v27, v5, v0

    const/16 v0, 0x17

    aput-object v28, v5, v0

    const/16 v0, 0x18

    aput-object v29, v5, v0

    const/16 v0, 0x19

    aput-object v30, v5, v0

    const/16 v0, 0x1a

    aput-object v31, v5, v0

    const/16 v0, 0x1b

    aput-object v32, v5, v0

    const/16 v0, 0x1c

    aput-object v33, v5, v0

    const/16 v0, 0x1d

    aput-object v34, v5, v0

    const/16 v0, 0x1e

    aput-object v3, v5, v0

    sput-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1837
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    .line 1838
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0

    array-length v1, v0

    move v3, v13

    :goto_27b
    if-ge v3, v1, :cond_289

    aget-object v2, v0, v3

    .line 1839
    .local v2, "am":Ljava/lang/invoke/VarHandle$AccessMode;
    sget-object v4, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    iget-object v5, v2, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    .end local v2    # "am":Ljava/lang/invoke/VarHandle$AccessMode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27b

    .line 1841
    :cond_289
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V
    .registers 5
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "at"    # Ljava/lang/invoke/VarHandle$AccessType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/VarHandle$AccessType;",
            ")V"
        }
    .end annotation

    .line 1846
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1847
    iput-object p3, p0, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    .line 1848
    iput-object p4, p0, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1849
    return-void
.end method

.method public static greylist-max-o valueFromMethodName(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1875
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1876
    .local v0, "am":Ljava/lang/invoke/VarHandle$AccessMode;
    if-eqz v0, :cond_b

    return-object v0

    .line 1877
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No AccessMode value for method name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1644
    const-class v0, Ljava/lang/invoke/VarHandle$AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessMode;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 1

    .line 1644
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

    invoke-virtual {v0}, [Ljava/lang/invoke/VarHandle$AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/VarHandle$AccessMode;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o methodName()Ljava/lang/String;
    .registers 2

    .line 1859
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    return-object v0
.end method
