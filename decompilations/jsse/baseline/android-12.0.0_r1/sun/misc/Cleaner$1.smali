.class Lsun/misc/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Cleaner;->clean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/Cleaner;

.field final synthetic blacklist val$x:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lsun/misc/Cleaner;

    .line 144
    iput-object p1, p0, Lsun/misc/Cleaner$1;->this$0:Lsun/misc/Cleaner;

    iput-object p2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lsun/misc/Cleaner$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4

    .line 146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v0, :cond_10

    .line 147
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    const-string v2, "Cleaner terminated abnormally"

    invoke-direct {v0, v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 149
    :cond_10
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method
