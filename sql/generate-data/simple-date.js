function SimpleDate(yy, mm, dd) {
    this.yy = yy;
    this.mm = mm;
    this.dd = dd;
}

// TODO: This implementation does not take care of rolling over months or years!
// So currently use it only to add up to 28 days from the beginning of the month
SimpleDate.prototype.addDays = function(days) {
    this.dd += days;
    return this;
};

// TODO: This implementation does not take care of rolling over months or years!
// So currently use it only to add up to 4 weeks from the beginning of the month
SimpleDate.prototype.addWeek = function() {
    this.dd += 7;
    return this;
};

SimpleDate.prototype.addMonth = function() {
    this.mm++;
    if (this.mm > 12) {
        this.mm = 1;
        this.yy++;
    }
    return this;
};

SimpleDate.prototype.clone = function() {
    return new SimpleDate(this.yy, this.mm, this.dd);
};

SimpleDate.prototype.toString = function() {
    return this.yy + '-' + padZero(this.mm) + '-' + padZero(this.dd);
};

// Is this date less than or equal to the other date
SimpleDate.prototype.lte = function(other) {
    return this.toString() <= other.toString();
};

function padZero(num) {
    return (num < 10) ? ('0' + num) : num.toString();
}

module.exports = SimpleDate;
