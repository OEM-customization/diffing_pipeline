.class public Ljava/lang/ExceptionInInitializerError;
.super Ljava/lang/LinkageError;
.source "ExceptionInInitializerError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x151e34d009a19380L


# instance fields
.field private greylist-max-o exception:Ljava/lang/Throwable;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 68
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 78
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 80
    iput-object p1, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 124
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getException()Ljava/lang/Throwable;
    .registers 2

    .line 112
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method
