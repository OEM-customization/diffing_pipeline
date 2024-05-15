.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$PkbZGUBauY6-u1ZrRakcFQjTln0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToIntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$PkbZGUBauY6-u1ZrRakcFQjTln0;->f$0:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$PkbZGUBauY6-u1ZrRakcFQjTln0;->f$0:Ljava/util/function/ToIntFunction;

    check-cast p1, [I

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$summingInt$11(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V

    return-void
.end method
