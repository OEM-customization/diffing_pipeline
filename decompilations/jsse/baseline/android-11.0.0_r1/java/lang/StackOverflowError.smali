.class public Ljava/lang/StackOverflowError;
.super Ljava/lang/VirtualMachineError;
.source "StackOverflowError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7779ef15877b2377L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method