.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$GYNZB08upNxJa3yuZVQ1065S1eU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$GYNZB08upNxJa3yuZVQ1065S1eU;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$GYNZB08upNxJa3yuZVQ1065S1eU;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/stream/Collectors$Partition;

    check-cast p2, Ljava/util/stream/Collectors$Partition;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$partitioningBy$55(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;

    move-result-object p1

    return-object p1
.end method
