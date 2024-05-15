.class public final synthetic Ljava/util/-$$Lambda$Collections$CopiesList$JkPuGMNhrKbnEHjebm8AvHc2xHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CopiesList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CopiesList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Collections$CopiesList$JkPuGMNhrKbnEHjebm8AvHc2xHw;->f$0:Ljava/util/Collections$CopiesList;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/-$$Lambda$Collections$CopiesList$JkPuGMNhrKbnEHjebm8AvHc2xHw;->f$0:Ljava/util/Collections$CopiesList;

    invoke-virtual {v0, p1}, Ljava/util/Collections$CopiesList;->lambda$parallelStream$1$Collections$CopiesList(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
