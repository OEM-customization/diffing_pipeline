.class final Ljava/util/logging/LogManager$7;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$parent:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/logging/LogManager$7;->val$logger:Ljava/util/logging/Logger;

    iput-object p2, p0, Ljava/util/logging/LogManager$7;->val$parent:Ljava/util/logging/Logger;

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1201
    iget-object v0, p0, Ljava/util/logging/LogManager$7;->val$logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Ljava/util/logging/LogManager$7;->val$parent:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 1202
    const/4 v0, 0x0

    return-object v0
.end method
