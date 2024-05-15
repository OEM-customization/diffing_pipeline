.class Ljava/lang/Short$ShortCache;
.super Ljava/lang/Object;
.source "Short.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCache"
.end annotation


# static fields
.field static final greylist-max-o cache:[Ljava/lang/Short;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Short;

    sput-object v0, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 213
    new-instance v2, Ljava/lang/Short;

    add-int/lit8 v3, v0, -0x80

    int-to-short v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 214
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
