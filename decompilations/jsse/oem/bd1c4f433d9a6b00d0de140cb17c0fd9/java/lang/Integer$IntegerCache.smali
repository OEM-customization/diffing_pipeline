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
.field static final synthetic -assertionsDisabled:Z

.field static final cache:[Ljava/lang/Integer;

.field static final high:I

.field static final low:I = -0x80


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x7f

    const-class v7, Ljava/lang/Integer$IntegerCache;

    invoke-virtual {v7}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    sput-boolean v7, Ljava/lang/Integer$IntegerCache;->-assertionsDisabled:Z

    .line 815
    const/16 v0, 0x7f

    .line 817
    .local v0, "h":I
    const-string/jumbo v7, "java.lang.Integer.IntegerCache.high"

    invoke-static {v7}, Lsun/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "integerCacheHighPropValue":Ljava/lang/String;
    if-eqz v2, :cond_28

    .line 820
    :try_start_17
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 821
    .local v1, "i":I
    const/16 v7, 0x7f

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 823
    const v7, 0x7fffff7e

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_27} :catch_5a

    move-result v0

    .line 828
    .end local v1    # "i":I
    :cond_28
    :goto_28
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    .line 830
    sget v7, Ljava/lang/Integer$IntegerCache;->high:I

    add-int/lit16 v7, v7, 0x80

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    sput-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    .line 831
    const/16 v3, -0x80

    .line 832
    .local v3, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_37
    sget-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    array-length v7, v7

    if-ge v5, v7, :cond_4b

    .line 833
    sget-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    invoke-direct {v8, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v5

    .line 832
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_37

    .line 836
    :cond_4b
    sget-boolean v7, Ljava/lang/Integer$IntegerCache;->-assertionsDisabled:Z

    if-nez v7, :cond_59

    sget v7, Ljava/lang/Integer$IntegerCache;->high:I

    if-ge v7, v9, :cond_59

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 808
    :cond_59
    return-void

    .line 824
    .end local v3    # "j":I
    .end local v5    # "k":I
    :catch_5a
    move-exception v6

    .local v6, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_28
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
