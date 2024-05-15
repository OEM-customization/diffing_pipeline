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
.field static final greylist-max-o cache:[Ljava/lang/Long;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 814
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Long;

    sput-object v0, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 818
    new-instance v2, Ljava/lang/Long;

    add-int/lit8 v3, v0, -0x80

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, v0

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 819
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
