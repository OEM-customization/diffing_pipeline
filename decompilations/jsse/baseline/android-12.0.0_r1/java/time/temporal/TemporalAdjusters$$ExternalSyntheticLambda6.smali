.class public final synthetic Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/UnaryOperator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3

    iget-object v0, p0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/UnaryOperator;

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$ofDateAdjuster$0(Ljava/util/function/UnaryOperator;Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
