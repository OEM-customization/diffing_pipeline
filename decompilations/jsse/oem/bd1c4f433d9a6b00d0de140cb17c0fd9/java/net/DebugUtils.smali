.class public Ljava/net/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugLogOn()Z
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 26
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "vmProperties":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v5, v4

    if-ge v0, v5, :cond_43

    .line 28
    aget-object v5, v4, v0

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 29
    .local v2, "split":I
    aget-object v5, v4, v0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "key":Ljava/lang/String;
    aget-object v5, v4, v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "val":Ljava/lang/String;
    const-string/jumbo v5, "build-type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 32
    const-string/jumbo v5, "eng"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string/jumbo v5, "userdebug"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 31
    if-eqz v5, :cond_40

    .line 33
    :cond_3e
    const/4 v5, 0x1

    return v5

    .line 27
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 37
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "split":I
    .end local v3    # "val":Ljava/lang/String;
    :cond_43
    return v7
.end method
