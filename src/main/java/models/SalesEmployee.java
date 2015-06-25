package models;

import java.math.BigDecimal;

public class SalesEmployee extends BaseEmployee{

	private BigDecimal commissionRate;
	private int salesTotal;

	public SalesEmployee() {

	}
	public BigDecimal getCommissionRate() {
		return commissionRate;
	}

	public void setCommissionRate(BigDecimal commissionRate) {
		this.commissionRate = commissionRate;
	}

	public int getSalesTotal() {
		return salesTotal;
	}

	public void setSalesTotal(int salesTotal) {
		this.salesTotal = salesTotal;
	}

}
