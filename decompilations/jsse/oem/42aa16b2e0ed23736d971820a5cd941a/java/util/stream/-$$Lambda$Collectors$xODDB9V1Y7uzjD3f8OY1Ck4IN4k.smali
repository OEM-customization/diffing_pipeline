.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$xODDB9V1Y7uzjD3f8OY1Ck4IN4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$xODDB9V1Y7uzjD3f8OY1Ck4IN4k;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$xODDB9V1Y7uzjD3f8OY1Ck4IN4k;->f$0:Ljava/util/function/Function;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->lambda$groupingBy$47(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
