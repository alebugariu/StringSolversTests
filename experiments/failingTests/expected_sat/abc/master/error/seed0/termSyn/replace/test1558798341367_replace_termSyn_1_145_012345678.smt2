(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (= (str.replace (str.++ tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int7)) (str.at tmp_str0 tmp_int20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_int20 = 0
;actual status: not_implemented
;I0818 17:37:15.275579  3237 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.275596  3237 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.275604  3237 UnaryAutomaton.cpp:327] 1
;I0818 17:37:15.280900  3237 SymbolTable.cpp:304] tmp_int20,1
;F0818 17:37:15.322476  3237 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f6288c2cf5d  google::LogMessage::Fail()
;    @     0x7f6288c2f513  google::LogMessage::SendToLog()
;    @     0x7f6288c2caeb  google::LogMessage::Flush()
;    @     0x7f6288c2e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f6289250a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f628929e992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f628924f762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f628929bdf0  Vlab::SMT::ToString::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f628924ff86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f628929c400  Vlab::SMT::Replace::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f628924a7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6289297450  Vlab::SMT::Eq::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6289248878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f62892895ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f628928096e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6289295b5c  Vlab::SMT::And::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6289289a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f628927fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6289293d2a  Vlab::SMT::Assert::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62892a2699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6289293067  Vlab::SMT::Script::visit_children()
;    @     0x7f628919d9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f628927fb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f628929303c  Vlab::SMT::Script::accept()
;    @     0x7f628919d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f628927f7bb  Vlab::Solver::ConstraintSolver::start()
