.class public Ljava/lang/reflect/InvocationTargetException;
.super Ljava/lang/ReflectiveOperationException;
.source "InvocationTargetException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x38b1268ed671246fL


# instance fields
.field private greylist-max-o target:Ljava/lang/Throwable;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Throwable;

    .line 72
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 74
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 109
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTargetException()Ljava/lang/Throwable;
    .registers 2

    .line 98
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method
