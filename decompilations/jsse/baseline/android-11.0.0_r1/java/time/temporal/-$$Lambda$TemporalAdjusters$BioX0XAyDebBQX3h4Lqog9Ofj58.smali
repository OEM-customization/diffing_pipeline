.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalAdjusters$BioX0XAyDebBQX3h4Lqog9Ofj58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$BioX0XAyDebBQX3h4Lqog9Ofj58;->f$0:I

    iput p2, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$BioX0XAyDebBQX3h4Lqog9Ofj58;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 4

    iget v0, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$BioX0XAyDebBQX3h4Lqog9Ofj58;->f$0:I

    iget v1, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$BioX0XAyDebBQX3h4Lqog9Ofj58;->f$1:I

    invoke-static {v0, v1, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$dayOfWeekInMonth$8(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method