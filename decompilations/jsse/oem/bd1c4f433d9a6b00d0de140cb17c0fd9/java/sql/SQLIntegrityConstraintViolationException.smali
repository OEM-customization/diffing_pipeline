.class public Ljava/sql/SQLIntegrityConstraintViolationException;
.super Ljava/sql/SQLNonTransientException;
.source "SQLIntegrityConstraintViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x6f7c638e72373691L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/sql/SQLNonTransientException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method
