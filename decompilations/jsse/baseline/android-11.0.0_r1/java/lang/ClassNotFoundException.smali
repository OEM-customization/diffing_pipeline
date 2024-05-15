.class public Ljava/lang/ClassNotFoundException;
.super Ljava/lang/ReflectiveOperationException;
.source "ClassNotFoundException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7f5acd663ed4208eL


# instance fields
.field private greylist-max-o ex:Ljava/lang/Throwable;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iput-object p2, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 123
    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getException()Ljava/lang/Throwable;
    .registers 2

    .line 111
    iget-object v0, p0, Ljava/lang/ClassNotFoundException;->ex:Ljava/lang/Throwable;

    return-object v0
.end method
