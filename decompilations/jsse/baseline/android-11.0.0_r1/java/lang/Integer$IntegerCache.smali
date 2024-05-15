.class Ljava/lang/Integer$IntegerCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerCache"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o cache:[Ljava/lang/Integer;

.field static final greylist-max-o high:I

.field static final greylist-max-o low:I = -0x80


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 815
    const-class v0, Ljava/lang/Integer;

    .line 822
    const/16 v0, 0x7f

    .line 823
    .local v0, "h":I
    nop

    .line 824
    const-string v1, "java.lang.Integer.IntegerCache.high"

    invoke-static {v1}, Lsun/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "integerCacheHighPropValue":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 827
    :try_start_d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 828
    .local v2, "i":I
    const/16 v3, 0x7f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v2, v3

    .line 830
    const v3, 0x7fffff7e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1f} :catch_21

    move v0, v3

    .line 833
    .end local v2    # "i":I
    goto :goto_22

    .line 831
    :catch_21
    move-exception v2

    .line 835
    :cond_22
    :goto_22
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    .line 837
    add-int/lit16 v2, v0, 0x80

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    .line 838
    const/16 v2, -0x80

    .line 839
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2f
    sget-object v4, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    array-length v5, v4

    if-ge v3, v5, :cond_41

    .line 840
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "j":I
    .local v6, "j":I
    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v3

    .line 839
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_2f

    .line 843
    .end local v3    # "k":I
    .end local v6    # "j":I
    .restart local v2    # "j":I
    :cond_41
    nop

    .line 844
    .end local v0    # "h":I
    .end local v1    # "integerCacheHighPropValue":Ljava/lang/String;
    .end local v2    # "j":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
