.class public final enum Ljava/util/stream/StreamShape;
.super Ljava/lang/Enum;
.source "StreamShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/stream/StreamShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/stream/StreamShape;

.field public static final enum greylist-max-o DOUBLE_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum greylist-max-o INT_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum greylist-max-o LONG_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum greylist-max-o REFERENCE:Ljava/util/stream/StreamShape;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 56
    new-instance v0, Ljava/util/stream/StreamShape;

    const-string v1, "REFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 61
    new-instance v1, Ljava/util/stream/StreamShape;

    const-string v3, "INT_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 66
    new-instance v3, Ljava/util/stream/StreamShape;

    const-string v5, "LONG_VALUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 71
    new-instance v5, Ljava/util/stream/StreamShape;

    const-string v7, "DOUBLE_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    .line 51
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/util/stream/StreamShape;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/util/stream/StreamShape;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Ljava/util/stream/StreamShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/util/stream/StreamShape;
    .registers 1

    .line 51
    sget-object v0, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

    invoke-virtual {v0}, [Ljava/util/stream/StreamShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/stream/StreamShape;

    return-object v0
.end method
