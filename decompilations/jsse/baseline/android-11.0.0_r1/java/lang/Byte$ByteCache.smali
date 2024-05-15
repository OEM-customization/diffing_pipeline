.class Ljava/lang/Byte$ByteCache;
.super Ljava/lang/Object;
.source "Byte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Byte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteCache"
.end annotation


# static fields
.field static final greylist-max-o cache:[Ljava/lang/Byte;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 82
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 86
    new-instance v2, Ljava/lang/Byte;

    add-int/lit8 v3, v0, -0x80

    int-to-byte v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 87
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
