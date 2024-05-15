.class public final synthetic Ljava/util/function/-$$Lambda$Predicate$SDsDck317M7uJ9htNLy7zOBr1L8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$Predicate$SDsDck317M7uJ9htNLy7zOBr1L8;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljava/util/function/-$$Lambda$Predicate$SDsDck317M7uJ9htNLy7zOBr1L8;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/function/Predicate;->lambda$isEqual$3(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
