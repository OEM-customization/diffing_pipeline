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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/misc/Cleaner;

.field final synthetic val$x:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lsun/misc/Cleaner;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/misc/Cleaner$1;->this$0:Lsun/misc/Cleaner;

    iput-object p2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lsun/misc/Cleaner$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 147
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v0, :cond_12

    .line 148
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "Cleaner terminated abnormally"

    iget-object v2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 150
    :cond_12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 151
    return-object v3
.end method
