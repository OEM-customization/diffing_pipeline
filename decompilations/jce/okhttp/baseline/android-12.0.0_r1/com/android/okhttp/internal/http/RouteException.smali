.class public final Lcom/android/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final greylist-max-o addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private greylist-max-o lastException:Ljava/io/IOException;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 33
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 36
    .local v0, "m":Ljava/lang/reflect/Method;
    goto :goto_14

    .line 34
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_11
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 37
    .local v0, "m":Ljava/lang/reflect/Method;
    :goto_14
    sput-object v0, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 38
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/IOException;)V
    .registers 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 43
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 44
    return-void
.end method

.method private greylist-max-o addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "suppressed"    # Ljava/io/IOException;

    .line 56
    sget-object v0, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 58
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_e

    .line 60
    goto :goto_f

    .line 59
    :catch_e
    move-exception v0

    .line 62
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public greylist-max-o addConnectException(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 52
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 53
    return-void
.end method

.method public greylist-max-o getLastConnectException()Ljava/io/IOException;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-object v0
.end method
