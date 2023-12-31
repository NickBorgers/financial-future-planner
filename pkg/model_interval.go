/*
 * Financial Future Planner
 *
 * This is the HTTP API representation of the financial future planner
 *
 * API version: 0.0.1
 * Contact: nick@nickborgers.com
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type Interval struct {

	Period *Period `json:"period"`

	Balance int32 `json:"balance"`

	Assets []Balance `json:"assets"`

	Liabilities []Balance `json:"liabilities"`
}
