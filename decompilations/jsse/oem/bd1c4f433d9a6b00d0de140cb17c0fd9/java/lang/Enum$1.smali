.class final Ljava/lang/Enum$1;
.super Llibcore/util/BasicLruCache;
.source "Enum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/Enum;",
        ">;[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "$anonymous0"    # I

    .prologue
    .line 262
    invoke-direct {p0, p1}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 263
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Enum$1;->create(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    const/4 v5, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_8

    .line 265
    return-object v5

    .line 268
    :cond_8
    :try_start_8
    const-string/jumbo v4, "values"

    sget-object v5, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 269
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 270
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_22

    return-object v4

    .line 275
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_22
    move-exception v2

    .line 276
    .local v2, "impossible":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "impossible"

    invoke-direct {v4, v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 273
    .end local v2    # "impossible":Ljava/lang/reflect/InvocationTargetException;
    :catch_2c
    move-exception v0

    .line 274
    .local v0, "impossible":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "impossible"

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 271
    .end local v0    # "impossible":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v1

    .line 272
    .local v1, "impossible":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "impossible"

    invoke-direct {v4, v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
