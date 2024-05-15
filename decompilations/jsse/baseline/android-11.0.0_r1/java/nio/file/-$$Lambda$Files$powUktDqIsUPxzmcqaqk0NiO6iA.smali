.class public final synthetic Ljava/nio/file/-$$Lambda$Files$powUktDqIsUPxzmcqaqk0NiO6iA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/Closeable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/-$$Lambda$Files$powUktDqIsUPxzmcqaqk0NiO6iA;->f$0:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api run()V
    .registers 2

    iget-object v0, p0, Ljava/nio/file/-$$Lambda$Files$powUktDqIsUPxzmcqaqk0NiO6iA;->f$0:Ljava/io/Closeable;

    invoke-static {v0}, Ljava/nio/file/Files;->lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V

    return-void
.end method
