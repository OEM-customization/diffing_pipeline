.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalAdjusters$Hr69XZXcuTp7qqn22qJMcjGgXGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$Hr69XZXcuTp7qqn22qJMcjGgXGw;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3

    iget v0, p0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$Hr69XZXcuTp7qqn22qJMcjGgXGw;->f$0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$previous$11(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
