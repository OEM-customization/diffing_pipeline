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
    .registers 16

    .line 1650
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, "get"

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1656
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "SET"

    const/4 v4, 0x1

    const-string v5, "set"

    invoke-direct {v0, v2, v4, v5, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1662
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_VOLATILE"

    const/4 v5, 0x2

    const-string v6, "getVolatile"

    invoke-direct {v0, v2, v5, v6, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1668
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "SET_VOLATILE"

    const/4 v6, 0x3

    const-string v7, "setVolatile"

    invoke-direct {v0, v2, v6, v7, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1674
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_ACQUIRE"

    const/4 v7, 0x4

    const-string v8, "getAcquire"

    invoke-direct {v0, v2, v7, v8, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1680
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "SET_RELEASE"

    const/4 v8, 0x5

    const-string v9, "setRelease"

    invoke-direct {v0, v2, v8, v9, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1686
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_OPAQUE"

    const/4 v9, 0x6

    const-string v10, "getOpaque"

    invoke-direct {v0, v2, v9, v10, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1692
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "SET_OPAQUE"

    const/4 v10, 0x7

    const-string v11, "setOpaque"

    invoke-direct {v0, v2, v10, v11, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1698
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "COMPARE_AND_SET"

    const/16 v11, 0x8

    const-string v12, "compareAndSet"

    invoke-direct {v0, v2, v11, v12, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1704
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "COMPARE_AND_EXCHANGE"

    const/16 v12, 0x9

    const-string v13, "compareAndExchange"

    invoke-direct {v0, v2, v12, v13, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1710
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "COMPARE_AND_EXCHANGE_ACQUIRE"

    const/16 v13, 0xa

    const-string v14, "compareAndExchangeAcquire"

    invoke-direct {v0, v2, v13, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1716
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "COMPARE_AND_EXCHANGE_RELEASE"

    const/16 v14, 0xb

    const-string v15, "compareAndExchangeRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1722
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "WEAK_COMPARE_AND_SET_PLAIN"

    const/16 v15, 0xc

    const-string v14, "weakCompareAndSetPlain"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1728
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "WEAK_COMPARE_AND_SET"

    const/16 v14, 0xd

    const-string v15, "weakCompareAndSet"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1734
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "WEAK_COMPARE_AND_SET_ACQUIRE"

    const/16 v15, 0xe

    const-string v14, "weakCompareAndSetAcquire"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1740
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SWAP:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "WEAK_COMPARE_AND_SET_RELEASE"

    const/16 v14, 0xf

    const-string v15, "weakCompareAndSetRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1746
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_SET"

    const/16 v15, 0x10

    const-string v14, "getAndSet"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1752
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_SET_ACQUIRE"

    const/16 v14, 0x11

    const-string v15, "getAndSetAcquire"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1758
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_SET_RELEASE"

    const/16 v15, 0x12

    const-string v14, "getAndSetRelease"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1764
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_ADD"

    const/16 v14, 0x13

    const-string v15, "getAndAdd"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1770
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_ADD_ACQUIRE"

    const/16 v15, 0x14

    const-string v14, "getAndAddAcquire"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1776
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_ADD_RELEASE"

    const/16 v14, 0x15

    const-string v15, "getAndAddRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1782
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_OR"

    const/16 v15, 0x16

    const-string v14, "getAndBitwiseOr"

    invoke-direct {v0, v2, v15, v14, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1788
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_OR_RELEASE"

    const/16 v14, 0x17

    const-string v15, "getAndBitwiseOrRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1794
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_OR_ACQUIRE"

    const/16 v14, 0x18

    const-string v15, "getAndBitwiseOrAcquire"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1800
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_AND"

    const/16 v14, 0x19

    const-string v15, "getAndBitwiseAnd"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1806
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_AND_RELEASE"

    const/16 v14, 0x1a

    const-string v15, "getAndBitwiseAndRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1812
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_AND_ACQUIRE"

    const/16 v14, 0x1b

    const-string v15, "getAndBitwiseAndAcquire"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1818
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_XOR"

    const/16 v14, 0x1c

    const-string v15, "getAndBitwiseXor"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1824
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_XOR_RELEASE"

    const/16 v14, 0x1d

    const-string v15, "getAndBitwiseXorRelease"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1830
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v2, "GET_AND_BITWISE_XOR_ACQUIRE"

    const/16 v14, 0x1e

    const-string v15, "getAndBitwiseXorAcquire"

    invoke-direct {v0, v2, v14, v15, v1}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1644
    const/16 v1, 0x1f

    new-array v1, v1, [Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->SET:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v10

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v11

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v12

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    aput-object v2, v1, v13

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    sput-object v1, Ljava/lang/invoke/VarHandle$AccessMode;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

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

    :goto_282
    if-ge v3, v1, :cond_290

    aget-object v2, v0, v3

    .line 1839
    .local v2, "am":Ljava/lang/invoke/VarHandle$AccessMode;
    sget-object v4, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    iget-object v5, v2, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    .end local v2    # "am":Ljava/lang/invoke/VarHandle$AccessMode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_282

    .line 1841
    :cond_290
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
