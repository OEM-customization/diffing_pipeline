.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$EsYSkkQ7p405z0qsCjjJsUR3Wfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$EsYSkkQ7p405z0qsCjjJsUR3Wfk;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$EsYSkkQ7p405z0qsCjjJsUR3Wfk;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$boxSupplier$37(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method