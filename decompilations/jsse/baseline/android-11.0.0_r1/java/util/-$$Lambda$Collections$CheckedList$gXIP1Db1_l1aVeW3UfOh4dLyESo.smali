.class public final synthetic Ljava/util/-$$Lambda$Collections$CheckedList$gXIP1Db1_l1aVeW3UfOh4dLyESo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CheckedList;

.field public final synthetic blacklist f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Collections$CheckedList$gXIP1Db1_l1aVeW3UfOh4dLyESo;->f$0:Ljava/util/Collections$CheckedList;

    iput-object p2, p0, Ljava/util/-$$Lambda$Collections$CheckedList$gXIP1Db1_l1aVeW3UfOh4dLyESo;->f$1:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$Collections$CheckedList$gXIP1Db1_l1aVeW3UfOh4dLyESo;->f$0:Ljava/util/Collections$CheckedList;

    iget-object v1, p0, Ljava/util/-$$Lambda$Collections$CheckedList$gXIP1Db1_l1aVeW3UfOh4dLyESo;->f$1:Ljava/util/function/UnaryOperator;

    invoke-virtual {v0, v1, p1}, Ljava/util/Collections$CheckedList;->lambda$replaceAll$0$Collections$CheckedList(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
