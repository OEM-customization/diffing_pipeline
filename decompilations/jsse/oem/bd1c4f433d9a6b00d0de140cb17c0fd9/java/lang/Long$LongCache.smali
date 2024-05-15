.class Ljava/lang/Long$LongCache;
.super Ljava/lang/Object;
.source "Long.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 810
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    .line 813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 814
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    new-instance v2, Ljava/lang/Long;

    add-int/lit8 v3, v0, -0x80

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, v0

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 807
    :cond_1b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
