.class public final Lcom/android/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 31
    :try_start_0
    const-class v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    move-result-object v1

    .line 35
    :goto_11
    sput-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 26
    return-void

    .line 32
    :catch_14
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "m":Ljava/lang/reflect/Method;
    goto :goto_11
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 42
    return-void
.end method

.method private addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "suppressed"    # Ljava/io/IOException;

    .prologue
    .line 54
    sget-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_f

    .line 56
    :try_start_4
    sget-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_10

    .line 60
    :cond_f
    :goto_f
    return-void

    .line 57
    :catch_10
    move-exception v0

    .local v0, "ignored":Ljava/lang/ReflectiveOperationException;
    goto :goto_f
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 50
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 51
    return-void
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-object v0
.end method
